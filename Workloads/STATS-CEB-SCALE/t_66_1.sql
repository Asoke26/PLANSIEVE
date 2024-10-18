SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 0
AND p.PostTypeId = 1
AND p.Score = 1
AND p.ViewCount <= 1570.0
AND ph.PostHistoryTypeId = 5
AND u.Reputation <= 1062
AND u.Views >= 120
AND u.Views <= 273
AND u.DownVotes >= 60
AND c.CreationDate >= 53
AND c.CreationDate <= 1041
AND pl.CreationDate >= 893

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;