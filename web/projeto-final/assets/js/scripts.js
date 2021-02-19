var movieGrid = document.querySelector('#movieGrid');
var carouselInner = document.querySelector('.carousel-inner');

const apiKeyBR = '?api_key=76843f28096fdd8dcc5ff3cfb298c938&language=pt-BR';
const apiKey = '?api_key=76843f28096fdd8dcc5ff3cfb298c938&language=en-US';
const getMovie = 'https://api.themoviedb.org/3/movie/';
const getImage = 'https://image.tmdb.org/t/p/original/';

var movieList = {
    'Castle in the Sky': 10515,
    'Grave of the Fireflies': 12477,
    'My Neighbor Totoro': 8392,
    'Kiki\'s Delivery Service': 16859,
    'Only Yesterday': 15080,
    'Porco Rosso': 11621,
    'Ocean Waves': 21057,
    'Pom Poko': 15283,
    'Whisper of the Heart': 37797,
    'Princess Mononoke': 128,
    'My Neighbours the Yamadas': 16198,
    'Spirited Away': 129,
    'The Cat Returns': 15370,
    'Howl\'s Moving Castle': 4935,
    'Tales from Earthsea': 37933,
    'Ponyo': 12429,
    'The Secret World of Arrietty': 51739,
    'From Up on Poppy Hill': 83389,
    'The Wind Rises': 149870,
    'The Tale of the Princess Kaguya': 149871,
    'When Marnie Was There': 242828,
    'Earwig and the Witch': 683127
};

var movieIdList = [683127, 242828, 149871, 149870, 83389, 51739, 12429, 37933, 4935, 15370, 129, 16198, 128, 37797, 15283, 21057, 11621, 15080, 16859, 8392, 12477, 10515];

var carouselActive = false;

for (var i in movieIdList) {
    // Fetch BR - Carousel e Modal
    fetch(getMovie + movieIdList[i] + apiKeyBR).then((response) => {
        return response.json();
    }).then((data) => {
        // Carousel
        var carouselItem = document.createElement('div');
        carouselItem.classList.add('carousel-item');

        if (carouselActive == false) {
            carouselItem.classList.add('active');
            carouselActive = true;
        }

        var carouselImg = document.createElement('img');
        carouselImg.classList.add('d-block');
        carouselImg.classList.add('w-100');
        carouselImg.src = getImage + data['backdrop_path'];

        var carouselCaption = document.createElement('div');
        carouselCaption.classList.add('carousel-caption');
        carouselCaption.classList.add('d-none');
        carouselCaption.classList.add('d-md-block');

        var carouselCaptionH5 = document.createElement('h5');
        carouselCaptionH5.innerText = data['title'] + ' - ' + data['release_date'].substr(0, 4);

        carouselCaption.appendChild(carouselCaptionH5);
        carouselItem.appendChild(carouselImg);
        carouselItem.appendChild(carouselCaption);
        carouselInner.appendChild(carouselItem);
    });

    // Fetch US - Posters
    fetch(getMovie + movieIdList[i] + apiKey).then((response) => {
        return response.json();
    }).then((data) => {
        // Movie Grid
        var col = document.createElement('div');
        col.classList.add('col');

        var a = document.createElement('a');
        // a.href = '#exampleModal';

        var gridImg = document.createElement('img');
        gridImg.src = getImage + data['poster_path'];
        gridImg.classList.add('img-thumbnail');
        gridImg.classList.add('img-fluid');
        gridImg.classList.add('w-100');
        gridImg.classList.add('poster')
        gridImg.dataMovieId = data['id'];

        a.appendChild(gridImg);
        col.appendChild(a);
        movieGrid.appendChild(col);
    });
}

var movieThumb = movieGrid.querySelectorAll('.poster');
var movieModal = document.querySelector('#movieModal');

movieGrid.addEventListener('click', (target) => {
    if (target.target.nodeName == 'IMG') {
        var movie = target.target;

        fetch(getMovie + movie.dataMovieId + apiKeyBR).then((response) => {
            return response.json();
        }).then((data) => {
            var title = data['title'];
            var releaseDate = data['release_date'];
            var runtime = data['runtime'];
            var imdbLink = 'https://www.imdb.com/title/' + data['imdb_id'];
            var tmdbLink = 'https://www.themoviedb.org/movie/' + data['id'];

            movieModal.querySelector('.modal-title').innerText = title;
            movieModal.querySelector('.modal-body').innerHTML =
            '<p><span class="h6">Data de Lançamento: </span> <span>' + 
            releaseDate.substr(8, 2) + '/' + releaseDate.substr(5, 2) + '/' + releaseDate.substr(0, 4) + '</p>' +
            '<p><span class="h6">Duração: </span>' + runtime + 'min</p>' +
            '<p> <span class="h6">Sinopse: </span>' +
            data['overview'] + '</p>' +
            '<a href="' + imdbLink + '" target="_blank"> <img style="width: 5rem;" src="./assets/img/imdb-logo.png"> </a>' +
            '<a href="' + tmdbLink + '" target="_blank"> <img style="width: 5rem;" src="./assets/img/tmdb-logo.svg"> </a>';
        });

        $('#movieModal').modal();
    }
});