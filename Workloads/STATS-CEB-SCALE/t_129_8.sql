SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 6
AND p.CommentCount <= 14
AND pl.LinkTypeId = 1
AND u.Reputation >= 861
AND u.Reputation <= 31170
AND u.DownVotes >= 3
AND u.DownVotes <= 15
AND c.CreationDate >= 54
AND c.CreationDate <= 374
AND ph.CreationDate >= 416

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;