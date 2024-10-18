SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 1
AND p.PostTypeId = 1
AND p.FavoriteCount >= 6.0
AND p.FavoriteCount <= 10.0
AND ph.PostHistoryTypeId = 33
AND u.DownVotes <= 163
AND u.UpVotes >= 9
AND c.CreationDate >= 1314
AND c.CreationDate <= 1397
AND u.CreationDate >= 495

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;