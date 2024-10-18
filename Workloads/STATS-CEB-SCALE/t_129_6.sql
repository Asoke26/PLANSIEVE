SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 12
AND p.CommentCount <= 16
AND pl.LinkTypeId = 1
AND u.Reputation >= 604
AND u.Reputation <= 1512

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;