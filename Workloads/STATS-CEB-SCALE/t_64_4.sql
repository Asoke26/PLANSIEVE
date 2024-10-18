SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 1
AND p.PostTypeId = 1
AND p.FavoriteCount >= 9.0
AND p.FavoriteCount <= 67.0
AND ph.PostHistoryTypeId = 34
AND u.DownVotes <= 779
AND u.UpVotes >= 13
AND c.CreationDate >= 103
AND c.CreationDate <= 1239
AND u.CreationDate >= 151

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;