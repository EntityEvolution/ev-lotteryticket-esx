this.window.onload = () => {
    window.addEventListener('message', (e) => {
        switch (e.data.action) {
            case 'beginNumbers':
                beginNums();
            break;
        }
    })
}