# Next.js + Docker Production Kit

Finally, a production-ready starter kit for Next.js and Docker Compose!

Based on my [official Next.js example](https://github.com/vercel/next.js/tree/canary/examples/with-docker-compose), with multiple JavaScript and TypeScript apps, Postgres, SSL with Nginx, and tons of best practice defaults from over 5 years of tweaking.

Issues/pull requests and ⭐ stars welcome as a show of support! Keep coming back, steal ideas for your development and production environment, and share your best practices as we continually make this example better.

<details>
<summary>Show Preview</summary>
<img src="https://i.imgur.com/Gxj1y81l.png" alt="Preview" />
</details>

## Why use Compose with Next.js?

Coming Soon: YouTube video

- 100% reproducable environment across macOS, Windows, and Linux teams.
- Easy to develop, test, and run multiple Next.js apps, databases, and other services together.
- Development and production environments are code. Compose file can be extended with any technology. If it exists, there's a Docker image of it. No exceptions.
- Made with simple, best-in-class technologies that developers of all skill levels can quickly pick up.

## How to use

Click the ![Fork][fork-icon] Fork button in the header of this repo before continuing. When finished, you'll be taken to your copy of the repo.

Next, you'll need to clone your forked repo to your computer. In VSCode, press <kbd>⌘+SHIFT+P</kbd> and search for `Git: Clone`, then enter `https://github.com/YOUR_GITHUB_USERNAME/nextjs-docker-production-kit.git`. If successful, a popup will prompt you to open your cloned repo.

## Development

Make sure you have [Docker Desktop](https://docs.docker.com/get-docker) installed.

In the root of your project, run your development environment:

```bash
./dev.sh
```

Visit [http://localhost:3000](http://localhost:3000) to see the result.

You can start editing the page by modifying `home/src/app/page.tsx`. The page auto-updates as you save the file.

### SSL ✨

This example comes pre-configured with SSL. That is, your development environment is accessible using a secure HTTPS connection. You will need to append the contents of [hosts](hosts) to your `/etc/hosts` file. 
- [How do I find and update my `/etc/hosts` file?](https://docs.rackspace.com/support/how-to/modify-your-hosts-file). 

Visit [https://local.mproske.com](https://local.mproske.com) to develop locally on SSL.

### Auto-formatting ✨

Install the recommended VSCode exensions. Then, install ESLint and Prettier by running `npm install`, `yarn install`, or `pnpm install` in the root of your project. Your JS and TS code should now auto-format on save.

## Production

Run your production environment:

```bash
./prod.sh
```

Visit [http://localhost:3000](http://localhost:3000) or [https://local.mproske.com](https://local.mproske.com).

Alternatively, you can run production without multistage.

```bash
./prod-without-multistage.sh
```

[Docker Multi-stage Builds](https://docs.docker.com/build/building/multi-stage) is recommended in production, because combined with [Next.js Output Standalone](https://nextjs.org/docs/advanced-features/output-file-tracing#automatically-copying-traced-files), only the minimum `node_modules` files required are copied into the final Docker image. This results in up to 85% smaller apps (Approximately 110 MB, compared to 1 GB with `create-next-app`). But this can be a good alternative for developers who don't want to get into the weeds. Because when you work in Docker, everything should be easily understandable.

## Deploy

Spin up a One-Click Docker app, that's ready to run in about 1 minute. Login to your server, run the production command, and you're up and running!

- [Digital Ocean](https://marketplace.digitalocean.com/apps/docker)
- [Vultr](https://www.vultr.com/apps/docker)

Visit http://YOUR_SERVERS_IP_ADDRESS:3000

## What now?

Add any apps or technologies you like! Try copying your Next.js app to the root of the project, copy over the Dockerfiles from the `next-ts-app` or `next-js-app` directory.

## Gotchas

- ???

If you notice any gotchas with this setup, please [open an issue](https://github.com/maxproske/nextjs-docker-production-kit/issues/new) so I can add them to this list.

## Useful commands

```bash
# Stop all running containers
docker kill $(docker ps -aq) && docker rm $(docker ps -aq)

# Free up space
docker system prune -af --volumes
```

<!-- Shortlinks -->
[fork-icon]: https://cdnjs.cloudflare.com/ajax/libs/octicons/4.4.0/svg/repo-forked.svg
