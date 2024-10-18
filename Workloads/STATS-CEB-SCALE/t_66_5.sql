SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 3
AND p.PostTypeId = 1
AND p.Score = 14
AND p.ViewCount <= 1557.0
AND ph.PostHistoryTypeId = 25
AND u.Reputation <= 5606
AND u.Views >= 199
AND u.Views <= 662
AND u.DownVotes >= 23
AND c.CreationDate >= 491
AND c.CreationDate <= 1541
AND pl.CreationDate >= 148

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;