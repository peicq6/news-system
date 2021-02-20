import { SESSION_STORAGE_TOKEN_KEY } from "./constant";

export const getToken = () => {
  return sessionStorage[SESSION_STORAGE_TOKEN_KEY];
};

export const setToken = token => {
  sessionStorage[SESSION_STORAGE_TOKEN_KEY] = token;
};

export const delToken = () => {
  sessionStorage.removeItem(SESSION_STORAGE_TOKEN_KEY);
};
