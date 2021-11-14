# Update Laravel Forge Deploy Script Action

Updates your deploy script on Laravel Forge from a file within your repository.

## Inputs

## `api_key`

**Required** Your Laravel Forge API Key.

## `server_id`

**Required** Your Laravel Forge Server ID.

## `site_id`

**Required** Your Laravel Forge Site ID.

## `path`

**Required** The path to your deploy script.

## Usage

This action updates your Laravel Forge **Deploy Script** with the contents of a given file.

Remember to check out your repository first.

I keep my deploy script at `.forge/deploy.sh` but this could be anywhere within your repository. The contents of `deploy.sh` can be copied directly from the **Deploy Script** section of your Laravel Forge dashboard.

```yml
- name: Sync deploy script
  uses: ryanito/sync-forge-deploy-script-action@v1
  with:
    api_key: ${{ secrets.API_KEY }}
    server_id: 1
    site_id: 1
    path: .forge/deploy.sh
```
