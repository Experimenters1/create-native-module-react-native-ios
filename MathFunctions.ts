import {NativeModules} from 'react-native';

const {MathFunctions} = NativeModules;

export const add = (a: number, b: number): Promise<number> => {
  return new Promise((resolve, reject) => {
    MathFunctions.add(a, b, (error: any, result: number) => {
      if (error) {
        reject(error);
      } else {
        resolve(result);
      }
    });
  });
};
