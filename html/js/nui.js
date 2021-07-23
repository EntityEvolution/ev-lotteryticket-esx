const doc = document

const elem = doc.getElementsByClassName('num-circle')
const nums = doc.getElementsByClassName('num-text')
const end = doc.getElementById('end')

// Get num between num
const getRandomNumBetween = (min, max) => {
    let mininum = Math.ceil(min);
    let maximum = Math.floor(max);
    return Math.floor(Math.random() * (maximum - mininum + 1)) + min;
}

// Functions for getting numbers
const getRandomNumber = (type) => {
    let ezNum = getRandomNumBetween(Config.minNumber, Config.maxNumber);
    let medNum = getRandomNumBetween(Config.minNumber, ezNum);
    let hardNum = getRandomNumBetween(Config.minNumber, medNum);
    if (hardNum > 1) {
        hardNum = hardNum - Config.reduceHardNumber
    }

    let extNum = getRandomNumBetween(0, hardNum);
    if (type === 'med') {
        return medNum
    } else if (type === 'hard') {
        return hardNum
    } else if (type === 'ext') {
        return extNum
    }
}

const beginNums = () => {
    let i = 0;
    for (i=0; i < elem.length; i++) {
        let number = 0
        if (i < 2) {
            number = getRandomNumber('ext');
        } else if (i == 2) {
            number = getRandomNumber('hard');
        } else if (i > 2 && i < 5) {
            number = getRandomNumber('med');
        } else {
            number = getRandomNumber('ext');
        }
        elem[i].textContent = number;
    }
}

const getR = (value) => {
    let i = 0;
    let err = false
    for (i=0; i < elem.length; i++) {
        if (i == value - 1) {
            let finalNums = elem[i].textContent
            return finalNums
        }
    }
}

const fetchNUI = async (cbname, data) => {
    const options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8'
        },
        body: JSON.stringify(data)
    };
    const resp = await fetch(`https://ev-lotteryticket-esx/${cbname}`, options);
    return await resp.json();
}

this.window.onload = () => {
    beginNums();
    end.addEventListener('click', () => {
        fetchNUI('getWinData', {one: getR(1), two: getR(2), three: getR(3), four: getR(4), five: getR(5), six: getR(6)})
    })
}