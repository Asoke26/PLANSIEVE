SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE 

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;