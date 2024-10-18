SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 1
AND p.PostTypeId = 1
AND p.FavoriteCount >= 19.0
AND p.FavoriteCount <= 68.0
AND ph.PostHistoryTypeId = 5
AND u.DownVotes <= 48
AND u.UpVotes >= 82
AND c.CreationDate >= 730
AND c.CreationDate <= 1117
AND u.CreationDate >= 316

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;