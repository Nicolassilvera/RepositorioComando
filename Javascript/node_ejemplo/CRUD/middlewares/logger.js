export const logger = (req, res, next) =>{
    const {url, method, params} = req;
    console.log(url);
    console.log(method);
    console.log(params);
    next();
}