const replace = {
  'true|true': () => 'FizzBuzz',
  'true|false': () => 'Fizz',
  'false|true': () => 'Buzz',
  'false|false': number => number
};

const setupList = (acc, cur) => {
  const {number, list} = acc;
  return Object.assign({}, acc, {number: number + 1, list: list.concat([number])});
};

const parseValue = number => {
  const key = `${number % 3 === 0}|${number % 5 === 0}`;
  return replace[key](number);
};

module.exports = listSize => {
  const {list} = new Array(listSize).fill().reduce(setupList, {number: 1, list: []});
  return list.map(parseValue);
};
