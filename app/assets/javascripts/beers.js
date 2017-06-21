document.addEventListener("DOMContentLoaded", function(event) {
    var app = new Vue({
        el: "#app",
        data: {
            beers: [],
            newBeerName: '',
            newBeerStyle: '',
            newBeerYeast: '',
            newBeerIBU:'',
            errors: []
        },
        mounted: function() {
            $.get('/api/v2/beers.json', function(data) {
                this.beers = data;
            }.bind(this));
        },
        methods: {
            addBeer: function() {
                this.errors = [];
                var params = {
                            name: this.newBeerName,
                            style: this.newBeerStyle,
                            yeast: this.newBeerYeast,
                            ibu: this.newBeerIBU
                            };
                $.post('/api/v2/beers.json', params, function(newBeer) {
                    this.beers.push(newBeer);
                    this.newBeerName = "";
                    this.newBeerStyle = "";
                    this.newBeerYeast = "";
                    this.newBeerIBU = "";           
                }.bind(this)).fail( function(response) {
                    this.errors = response.responseJSON.errors;
                }.bind(this));
            },
            deleteBeer: function(beer) {
                $.get('/api/v2/beers.json', function() {
                    var index = this.beers.indexOf(beer);
                    this.beers.splice(index, 1);
                }.bind(this));
            },
            toggleDetails: function(beer) {
                beer.detailsVisible = !beer.detailsVisible;
            }
        }
    })
});
