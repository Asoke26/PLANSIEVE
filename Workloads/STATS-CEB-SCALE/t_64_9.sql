SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 4
AND p.PostTypeId = 1
AND p.FavoriteCount >= 10.0
AND p.FavoriteCount <= 63.0
AND ph.PostHistoryTypeId = 25
AND u.DownVotes <= 42
AND u.UpVotes >= 283
AND c.CreationDate >= 44
AND c.CreationDate <= 1379
AND u.CreationDate >= 392

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;