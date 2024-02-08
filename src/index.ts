import { Elysia } from "elysia";

const app = new Elysia().get("/clientes/:id/extrato", ({
  params: { id },
}) => {
  return new Response(JSON.stringify({id}))
}).post("/clientes/:id/extrato", ({ params: {id}, body}) => {
  return new Response(JSON.stringify({id, body}))
}).listen(8080);

console.log(
  `🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port}`
);
