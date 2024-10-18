SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId=1
AND p.Score=2
AND p.FavoriteCount<=12
AND u.Reputation>=1
AND u.DownVotes>=0
AND c.CreationDate<=1542
AND pl.CreationDate>=52
AND pl.CreationDate<=1529
AND ph.CreationDate>=195
AND ph.CreationDate<=1539
AND v.CreationDate>=35

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;