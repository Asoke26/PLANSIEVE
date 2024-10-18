SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 5
AND p.CommentCount <= 22
AND pl.LinkTypeId = 1
AND u.Reputation >= 28
AND u.Reputation <= 1396
AND u.DownVotes >= 34
AND u.DownVotes <= 59
AND c.CreationDate >= 951
AND c.CreationDate <= 1103
AND ph.CreationDate >= 102

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;