SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 3
AND p.CommentCount <= 4
AND pl.LinkTypeId = 3
AND u.Reputation >= 4
AND u.Reputation <= 1469
AND u.DownVotes >= 57
AND u.DownVotes <= 163
AND c.CreationDate >= 198
AND c.CreationDate <= 1024
AND ph.CreationDate >= 1309

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;