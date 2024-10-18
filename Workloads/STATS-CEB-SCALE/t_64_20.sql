SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 3
AND p.PostTypeId = 1
AND p.FavoriteCount >= 13.0
AND p.FavoriteCount <= 27.0
AND ph.PostHistoryTypeId = 2
AND u.DownVotes <= 88
AND u.UpVotes >= 94
AND c.CreationDate >= 456
AND c.CreationDate <= 1318
AND u.CreationDate >= 351

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;