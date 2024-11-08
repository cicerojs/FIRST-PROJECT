module.exports = (srv) => {
    srv.on('READ', 'Costumers', (req) => {
        console.log(req)
        return {
            name: 'Cícero'
        }
    })
}