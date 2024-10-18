SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 6
AND p.PostTypeId = 1
AND p.FavoriteCount >= 0.0
AND p.FavoriteCount <= 63.0
AND ph.PostHistoryTypeId = 2
AND u.DownVotes <= 119
AND u.UpVotes >= 117
AND c.CreationDate >= 84
AND c.CreationDate <= 728
AND u.CreationDate >= 247

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;