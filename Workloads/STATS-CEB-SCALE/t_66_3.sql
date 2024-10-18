SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 8
AND p.PostTypeId = 1
AND p.Score = 7
AND p.ViewCount <= 1095.0
AND ph.PostHistoryTypeId = 1
AND u.Reputation <= 1001

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;