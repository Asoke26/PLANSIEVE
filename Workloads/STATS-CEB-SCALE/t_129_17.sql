SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 8
AND p.CommentCount <= 33
AND pl.LinkTypeId = 1
AND u.Reputation >= 620
AND u.Reputation <= 1003
AND u.DownVotes >= 7
AND u.DownVotes <= 60
AND c.CreationDate >= 76
AND c.CreationDate <= 977
AND ph.CreationDate >= 712

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;