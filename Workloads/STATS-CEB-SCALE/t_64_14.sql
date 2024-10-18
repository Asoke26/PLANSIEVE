SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 2
AND p.PostTypeId = 1
AND p.FavoriteCount >= 0.0
AND p.FavoriteCount <= 19.0
AND ph.PostHistoryTypeId = 1
AND u.DownVotes <= 412
AND u.UpVotes >= 683
AND c.CreationDate >= 666
AND c.CreationDate <= 1253
AND u.CreationDate >= 375

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;