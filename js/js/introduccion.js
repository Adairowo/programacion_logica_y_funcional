document.addEventListener("DOMContentLoaded", () => {
    const ul = document.getElementById("lista");
    const url = "https://thesimpsonsapi.com/api/";
    const arr_original = [];
  
    const imprimir = (arr) => {
      const filtrados = arr.filter(item => item.personaje.name && item.personaje.portrait_path);
      ul.innerHTML = filtrados.map(item => `
        <li>
          <img src="https://cdn.thesimpsonsapi.com/200${item.personaje.portrait_path}" width="200px" />
          <h2>${item.personaje.name}</h2>
        </li>
      `).join("");
    };
  
    const cargarDatos = async () => {
      const promesas = [];
      for (let i = 1; i <= 5; i++) {
        promesas.push(fetch(`${url}characters?page=${i}`).then(res => res.json()));
      }
  
      const resultados = await Promise.all(promesas);
      resultados.forEach(data => {
        data.results.forEach(personaje => {
          arr_original.push({ personaje, datos: null });
        });
      });
  
      imprimir(arr_original);
      document.getElementById("preloader").style.display = "none";
    };
  
    cargarDatos();
  
    document.getElementById("mostrarTodo").addEventListener("click", (evt) => {
      evt.preventDefault();
      imprimir(arr_original);
    });
  
    document.getElementById("acciones").addEventListener("change", (evt) => {
      const opcion = evt.target.value;
  
      switch (opcion) {
        case "moridos":
          imprimir(arr_original.filter(item =>
            item.personaje.status === "Deceased"
          ));
          break;
  
        case "menoresEdad":
          imprimir(arr_original.filter(item =>
            typeof item.personaje.age === "number" && item.personaje.age < 18
          ));
          break;
  
        case "promedioEdad":
          const edades = arr_original
            .map(item => item.personaje.age)
            .filter(age => typeof age === "number");
          if (edades.length > 0) {
            const promedio = edades.reduce((a, b) => a + b, 0) / edades.length;
            alert(`Promedio de edad: ${promedio.toFixed(2)} años`);
          } else {
            alert("No hay datos suficientes para calcular el promedio.");
          }
          break;
  
        case "ordenEdadAsc":
          imprimir(arr_original
            .filter(item => typeof item.personaje.age === "number")
            .sort((a, b) => a.personaje.age - b.personaje.age)
          );
          break;
  
        case "extremosEdad":
          const conEdad = arr_original.filter(item => typeof item.personaje.age === "number");
          const ordenados = [...conEdad].sort((a, b) => a.personaje.age - b.personaje.age);
          if (ordenados.length >= 2) {
            imprimir([ordenados[0], ordenados[ordenados.length - 1]]);
          }
          break;
  
        case "estudiantes":
          imprimir(arr_original.filter(item =>
            item.personaje.occupation === "Student at Springfield Elementary School"
          ));
          break;
  
        case "fechaNacimiento":
          imprimir(arr_original.filter(item => {
            const fecha = new Date(item.personaje.birthdate);
            return item.personaje.birthdate && fecha < new Date("1980-02-01");
          }));
          break;
  
        case "buscadorFrases":
          const frase = prompt("Ingresa una frase para buscar:");
          if (frase) {
            imprimir(arr_original.filter(item =>
              item.personaje.quote &&
              item.personaje.quote.toLowerCase().includes(frase.toLowerCase())
            ));
          }
          break;
  
        default:
          break;
      }
    });
  });
  