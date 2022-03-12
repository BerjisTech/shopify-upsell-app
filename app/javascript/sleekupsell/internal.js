document.addEventListener('DOMContentLoaded', () => {
    console.log(`${controller} ${action}`)
    if (controller === 'offers' && action === 'new') {
        document.querySelector('[action="/offers"]').addEventListener('submit', (e) => {
            e.preventDefault()
            e.stopPropagation()
            console.log(this)
        })
    }
})