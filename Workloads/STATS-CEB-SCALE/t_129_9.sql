SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 2
AND p.CommentCount <= 4
AND pl.LinkTypeId = 3
AND u.Reputation >= 76
AND u.Reputation <= 5115
AND u.DownVotes >= 2
AND u.DownVotes <= 114
AND c.CreationDate >= 1011
AND c.CreationDate <= 1517
AND ph.CreationDate >= 536

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;