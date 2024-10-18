SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 12
AND p.CommentCount <= 19
AND pl.LinkTypeId = 1
AND u.Reputation >= 949
AND u.Reputation <= 2092
AND u.DownVotes >= 6
AND u.DownVotes <= 14
AND c.CreationDate >= 75
AND c.CreationDate <= 1341
AND ph.CreationDate >= 675

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;