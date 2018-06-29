var fs = require('fs'),
newman = require('newman'),
token="";

newman.run({
    collection: './PostmanToken.postman_collection.json',
    environment: './PRODUCTION.postman_environment.json',
    reporters: ['cli', 'teamcity']
}, process.exit)
.on('request', function (err, args) {

	token = args.response.stream.toString()
        
	console.log(token)
})
.on('done', function(err, arg){
	var fileName = 'token.properties'
	fs.writeFile(fileName,"");
	fs.appendFileSync(fileName, token);
});
