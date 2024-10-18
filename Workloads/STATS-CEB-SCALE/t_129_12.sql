SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 3
AND p.CommentCount <= 7
AND pl.LinkTypeId = 1
AND u.Reputation >= 673
AND u.Reputation <= 833
AND u.DownVotes >= 4
AND u.DownVotes <= 60
AND c.CreationDate >= 188
AND c.CreationDate <= 1458
AND ph.CreationDate >= 1423

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;