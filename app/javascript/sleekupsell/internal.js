document.addEventListener('DOMContentLoaded', async () => {
    $('a').on('click', (e) => {
        e.preventDefault()
        e.stopPropagation()
        let href = $(e.target).attr('href')
        window.top.location = app_path + href
    })

    console.log(`${controller} ${action}`)
    if (controller === 'offers' && action === 'new') {
        document.querySelector('[action="/offers"]').addEventListener('submit', (e) => {
            e.preventDefault()
            e.stopPropagation()
            console.log(this)
        })
    }
})