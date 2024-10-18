SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 0
AND p.CommentCount <= 26
AND pl.LinkTypeId = 1
AND u.Reputation >= 49
AND u.Reputation <= 691
AND u.DownVotes >= 0
AND u.DownVotes <= 26
AND c.CreationDate >= 83
AND c.CreationDate <= 984
AND ph.CreationDate >= 1341

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;