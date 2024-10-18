SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.CommentCount >= 1
AND p.CommentCount <= 31
AND p.FavoriteCount >= 11.0
AND v.BountyAmount <= 125.0

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;