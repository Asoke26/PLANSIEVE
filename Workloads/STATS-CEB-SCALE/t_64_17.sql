SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 11
AND p.PostTypeId = 1
AND p.FavoriteCount >= 3.0
AND p.FavoriteCount <= 44.0
AND ph.PostHistoryTypeId = 1
AND u.DownVotes <= 214
AND u.UpVotes >= 2496
AND c.CreationDate >= 564
AND c.CreationDate <= 1519
AND u.CreationDate >= 111

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;