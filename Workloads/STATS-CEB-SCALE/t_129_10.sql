SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 21
AND p.CommentCount <= 35
AND pl.LinkTypeId = 1
AND u.Reputation >= 477
AND u.Reputation <= 25123
AND u.DownVotes >= 9
AND u.DownVotes <= 42
AND c.CreationDate >= 1105
AND c.CreationDate <= 1374
AND ph.CreationDate >= 882

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;