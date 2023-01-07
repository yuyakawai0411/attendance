import { Button } from "@mui/material";
import { NextPage } from "next";
import { useState } from 'react';
import { useForm } from 'react-hook-form';


const Home: NextPage = () => {
  // const [email, setEmail] = useState('');
  // const [password, setPassword] = useState('');
  const { register, handleSubmit } = useForm();
  const onSubmit = (data) => console.log(data);

  // const handleSubmit = (e) => {
  //   e.preventDefault();
  //   console.log({
  //     email,
  //     password,
  //   });
  // }

  // const handleChangeEmail = (e) => {
  //   setEmail(e.target.value);
  // }

  // const handleChangePassword = (e) => {
  //   setPassword(e.target.value);
  // }

  return (
    <div>
      <h1>ログイン</h1>
      <form onSubmit={handleSubmit(onSubmit)}>
        <div>
          <label htmlFor="email">Email</label>
          <input id='email' {...register('email')}/>
        </div>
        <div>
          <label htmlFor="password">Password</label>
          <input id='password' {...register('password')}/>
        </div>
        <div>
          <button type="submit">送信</button>
        </div>
      </form>

    </div>
  );
};

export default Home;
