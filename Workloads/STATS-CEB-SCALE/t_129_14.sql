SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 11
AND p.CommentCount <= 29
AND pl.LinkTypeId = 1
AND u.Reputation >= 254
AND u.Reputation <= 5134
AND u.DownVotes >= 17
AND u.DownVotes <= 55
AND c.CreationDate >= 804
AND c.CreationDate <= 1405
AND ph.CreationDate >= 541

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;