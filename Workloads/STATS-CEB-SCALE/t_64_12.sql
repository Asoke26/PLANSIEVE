SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 2
AND p.PostTypeId = 1
AND p.FavoriteCount >= 16.0
AND p.FavoriteCount <= 67.0
AND ph.PostHistoryTypeId = 1
AND u.DownVotes <= 779
AND u.UpVotes >= 73
AND c.CreationDate >= 121
AND c.CreationDate <= 1413
AND u.CreationDate >= 381

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;