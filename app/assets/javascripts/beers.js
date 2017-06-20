document.addEventListener("DOMContentLoaded", function(event) {
    var app = new Vue({
        el: "#app",
        data: {
            beers: [],
            newBeerName = '',
            newBeerStyle = '',
            newBeerYeast= '',
            newBeerIBU =''
        },
        mounted: function() {
            $.get('/api/v2/beers.json', function(data) {
                this.beers = data;
            }.bind(this));
        },
        methods: {
            addBeer: function() {
                var newBeer = {
                            name: this.newBeerName,
                            style: this.newBeerStyle,
                            yeast: this.newBeerYeast,
                            ibu: this.newBeerIBU
                            };
                this.beers.push(newBeer);
                this.newBeerName = "";
                this.newBeerStyle = "";
                this.newBeerYeast = "";
                this.newBeerIBU = "";

            }
        }

    })
});
