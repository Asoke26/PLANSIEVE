SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 14
AND u.UpVotes >= 242
AND v.CreationDate <= 1537
AND p.CreationDate >= 618
AND p.CreationDate <= 1068
AND u.CreationDate >= 179
AND u.CreationDate <= 750

AND v.PostId = p.Id
AND v.UserId = u.Id;