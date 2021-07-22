const doc = document

const elem = doc.getElementsByClassName('num-circle')
const nums = doc.getElementsByClassName('num-text')

// Get num between num
const getRandomNumBetween = (min, max) => {
    let mininum = Math.ceil(min);
    let maximum = Math.floor(max);
    return Math.floor(Math.random() * (maximum - mininum + 1)) + min;
}

// Functions for getting numbers
const getRandomNumber = (type) => {
    let ezNum = getRandomNumBetween(0, 9);
    let medNum = getRandomNumBetween(0, ezNum);
    let hardNum = getRandomNumBetween(0, medNum);
    if (hardNum > 1) {
        hardNum = hardNum - 1
    }

    let extNum = getRandomNumBetween(0, hardNum)
    if (type === 'easy') {
        return ezNum
    } else if (type === 'med') {
        return medNum
    } else if (type === 'hard') {
        return hardNum
    } else if (type === 'ext') {
        return extNum
    }
}

const beginNums = () => {
    let i = 0
    for (i=0; i < elem.length; i++) {
        let number = 0
        if (i < 2) {
            number = getRandomNumber('ext')
        } else if (i == 2) {
            number = getRandomNumber('hard')
        } else if (i > 2 && i < 5) {
            number = getRandomNumber('med')
        } else {
            number = getRandomNumber('easy')
        }
        elem[i].textContent = number
    }
}

this.window.onload = () => {
    beginNums()
}