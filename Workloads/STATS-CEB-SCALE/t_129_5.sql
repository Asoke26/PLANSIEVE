SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 2
AND p.CommentCount <= 19
AND pl.LinkTypeId = 1
AND u.Reputation >= 137
AND u.Reputation <= 1271

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;