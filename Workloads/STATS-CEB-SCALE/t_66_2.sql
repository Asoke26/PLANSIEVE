SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 2
AND p.PostTypeId = 1
AND p.Score = 5
AND p.ViewCount <= 2511.0
AND ph.PostHistoryTypeId = 25
AND u.Reputation <= 2103
AND u.Views >= 44
AND u.Views <= 257
AND u.DownVotes >= 2
AND c.CreationDate >= 254
AND c.CreationDate <= 1489
AND pl.CreationDate >= 1132

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;