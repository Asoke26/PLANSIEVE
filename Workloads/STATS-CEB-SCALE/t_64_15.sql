SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 4
AND p.PostTypeId = 1
AND p.FavoriteCount >= 3.0
AND p.FavoriteCount <= 61.0
AND ph.PostHistoryTypeId = 5
AND u.DownVotes <= 91
AND u.UpVotes >= 733
AND c.CreationDate >= 636
AND c.CreationDate <= 1452
AND u.CreationDate >= 482

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;