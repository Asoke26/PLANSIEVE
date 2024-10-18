SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE c.Score = 1
AND p.PostTypeId = 1
AND p.Score = 41
AND p.ViewCount <= 3561.0
AND ph.PostHistoryTypeId = 1
AND u.Reputation <= 995

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;