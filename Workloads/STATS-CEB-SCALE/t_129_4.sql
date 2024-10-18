SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 5
AND p.CommentCount <= 31
AND pl.LinkTypeId = 3
AND u.Reputation >= 611
AND u.Reputation <= 3000
AND u.DownVotes >= 11
AND u.DownVotes <= 65
AND c.CreationDate >= 292
AND c.CreationDate <= 974
AND ph.CreationDate >= 89

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;