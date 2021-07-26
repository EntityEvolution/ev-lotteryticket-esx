this.window.addEventListener('load', () => {
    window.addEventListener('message', (e) => {
        switch (e.data.action) {
            case 'beginNumbers':
                beginNums();
            break;
        }
    })
})