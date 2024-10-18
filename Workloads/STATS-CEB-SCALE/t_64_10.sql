SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 0
AND p.PostTypeId = 1
AND p.FavoriteCount >= 0.0
AND p.FavoriteCount <= 68.0
AND ph.PostHistoryTypeId = 34
AND u.DownVotes <= 49
AND u.UpVotes >= 2219
AND c.CreationDate >= 308
AND c.CreationDate <= 1522
AND u.CreationDate >= 184

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;