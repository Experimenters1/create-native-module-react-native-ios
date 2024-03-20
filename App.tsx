/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React, {useState} from 'react';
import {Text, View, Button} from 'react-native';
import {add} from './MathFunctions';

const App: React.FC = () => {
  const [result, setResult] = useState<number | null>(null);

  const calculate = async () => {
    try {
      const sum = await add(5, 3); // Gọi hàm add với các giá trị a và b
      setResult(sum);
    } catch (error) {
      console.error('Error:', error);
    }
  };

  return (
    <View style={{flex: 1, justifyContent: 'center', alignItems: 'center'}}>
      <Button title="Calculate" onPress={calculate} />
      {result !== null && <Text>Result: {result}</Text>}
    </View>
  );
};

export default App;
