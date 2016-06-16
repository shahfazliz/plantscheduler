/*global angular, freeform */
(function () {
    'use strict';
    
    angular.module('PlantScheduler', ['PrologInterpreter']);
    
    function TestController($http, PrologFactory) {
        var self = this;
        
        function getRules(filename) {
            return $http({
                method: 'GET',
                url: filename
            }).then(function (successData) {
               return successData.data;
            });
        }
        
        function runQuery(filename) {
            getRules(filename).then(function (rules) {
                PrologFactory.initRules(rules);
                var result = PrologFactory.freeform(self.query);
                console.log(result);
            });
        }
        
        self.runQuery   = runQuery;
        self.query      = ''; //'bagof(c, triple(sc, A, B), L), length(L, N) # L should have 21 elements';
    }
    
    TestController.$inject = ['$http', 'PrologFactory'];
    
    angular.module('PlantScheduler').controller('testController', TestController);
}());