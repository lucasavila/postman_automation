var fs = require('fs'),
newman = require('newman'),
token="";

newman.run({
    collection: './PostmanToken.postman_collection.json',
    environment: './PRODUCTION.postman_environment.json'
}, process.exit)
.on('request', function (err, args) {

	token = JSON.parse(args.response.stream.toString()).token
        
	console.log(token)
})
.on('done', function(err, arg){
	var fileName = 'token.properties'
	fs.writeFile(fileName,"");
	fs.appendFileSync(fileName, token);
});
