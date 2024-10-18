SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 0
AND p.PostTypeId = 1
AND p.Score = 8
AND p.ViewCount <= 16229.0
AND ph.PostHistoryTypeId = 1
AND u.Reputation <= 963
AND u.Views >= 69
AND u.Views <= 240
AND u.DownVotes >= 8
AND c.CreationDate >= 805
AND c.CreationDate <= 1518
AND pl.CreationDate >= 947

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;