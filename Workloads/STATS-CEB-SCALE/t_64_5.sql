SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 0
AND p.PostTypeId = 1
AND p.FavoriteCount >= 15.0
AND p.FavoriteCount <= 56.0
AND ph.PostHistoryTypeId = 25
AND u.DownVotes <= 214
AND u.UpVotes >= 136
AND c.CreationDate >= 690
AND c.CreationDate <= 1481
AND u.CreationDate >= 289

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;