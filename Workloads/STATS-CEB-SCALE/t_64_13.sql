SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 8
AND p.PostTypeId = 1
AND p.FavoriteCount >= 0.0
AND p.FavoriteCount <= 7.0
AND ph.PostHistoryTypeId = 10
AND u.DownVotes <= 779
AND u.UpVotes >= 151
AND c.CreationDate >= 111
AND c.CreationDate <= 1314
AND u.CreationDate >= 39

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;