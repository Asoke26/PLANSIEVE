SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 7
AND p.CommentCount <= 31
AND pl.LinkTypeId = 1
AND u.Reputation >= 497
AND u.Reputation <= 1463
AND u.DownVotes >= 4
AND u.DownVotes <= 24
AND c.CreationDate >= 1021
AND c.CreationDate <= 1176
AND ph.CreationDate >= 183

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;