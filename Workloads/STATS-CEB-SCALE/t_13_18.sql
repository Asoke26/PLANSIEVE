SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 100.0
AND u.UpVotes = 223
AND c.CreationDate >= 698
AND c.CreationDate <= 877
AND u.CreationDate <= 869

AND u.Id = c.UserId
AND u.Id = v.UserId;